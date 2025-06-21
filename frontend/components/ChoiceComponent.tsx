
import React, { useState, useEffect } from 'react';

type ChoiceComponentProps = {
  name: string;
  initAll?: boolean;
  options: string[];
  onChange?: (selected: string[]) => void;
};

export default function ChoiceComponent({ name, initAll, options, onChange }: ChoiceComponentProps) {
  const [selected, setSelected] = useState<string[]>(initAll ? [...options] : []);

  const isAllSelected = selected.length === options.length;

  useEffect(() => {
    onChange?.(selected);
  }, [selected, onChange]);

  const toggleAll = () => {
    setSelected(isAllSelected ? [] : [...options]);
  };

  const toggleOption = (option: string) => {
    setSelected((prev) =>
      prev.includes(option) ? prev.filter((o) => o !== option) : [...prev, option]
    );
  };

  return (
    <div className="space-y-4">
      <button
        onClick={toggleAll}
        className={`w-full text-center py-2 rounded font-semibold ${isAllSelected ? 'bg-orange-500 text-white' : 'bg-gray-200'
          }`}
      >
        {isAllSelected ? `Unselect All ${name}` : `Select All ${name}`}
      </button>

      <div className="grid grid-cols-4 sm:grid-cols-6 md:grid-cols-7 lg:grid-cols-11 gap-2">
        {options.map((option) => {
          const isSelected = selected.includes(option);
          return (
            <button
              key={option}
              onClick={() => toggleOption(option)}
              className={`aspect-square flex items-center justify-center text-sm font-medium rounded ${isSelected ? 'bg-orange-500 text-white' : 'bg-gray-100'
                } hover:bg-orange-100`}
            >
              {option}
            </button>
          );
        })}
      </div>
    </div>
  );
}

