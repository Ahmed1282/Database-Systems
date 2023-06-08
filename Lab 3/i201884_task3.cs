using System;
using System.Collections.Generic;

namespace CharacterCount
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Enter a string: ");
            string input = Console.ReadLine();
            Dictionary<char, int> charCount = new Dictionary<char, int>();

            foreach (char c in input)
            {
                if (charCount.ContainsKey(c))
                {
                    charCount[c]++;
                }
                else
                {
                    charCount[c] = 1;
                }
            }

            foreach (KeyValuePair<char, int> count in charCount)
            {
                Console.WriteLine("Character '" + count.Key + "' occurred " + count.Value + " times.");
            }
        }
    }
}
