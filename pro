using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Timers;

namespace ethan
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Enter player 1 name");
            String pl1 = Console.ReadLine();

            Console.WriteLine("Enter player 2 name");
            String pl2 = Console.ReadLine();

            int round = 0;
            int score1 = 0;
            int score2 = 0;



            while (true)
            {
                round++;
                Console.WriteLine($"round {round}");
                Console.WriteLine($"{pl1} Your move");

                String move1 = Console.ReadLine();

                Console.WriteLine($"{pl2} Your move");
                String move2 = Console.ReadLine();


                switch (move1.ToLower())
                {
                    case "rock":
                        if (move2.ToLower() == "paper")
                        {
                            Console.WriteLine($"Paper beats rock {pl2} wins");
                            score2++;
                        }


                        else if (move2.ToLower() == "rock")
                        {
                            Console.WriteLine($"ITS A TIE");
                        }

                        else if (move2.ToLower() == "scissors")
                        {
                            Console.WriteLine($"Rock beats scissors {pl1} wins");
                            score1++;

                        }

                        break;

                    case "paper":
                        if (move2.ToLower() == "paper")
                        {
                            Console.WriteLine("ITS A TIE");
                        }


                        else if (move2.ToLower() == "rock")
                        {
                            Console.WriteLine($"{pl1} wins");
                            score1++;
                        }


                        else if (move2.ToLower() == "scissors")
                        {
                            Console.WriteLine($"scissors beats paper {pl2} wins");
                            score2++;
                        }

                        break;

                    case "scissors":
                        if (move2.ToLower() == "paper")

                        {
                            Console.WriteLine($"scissors beats paper {pl1} wins");
                            score1++;
                        }

                        else if (move2.ToLower() == "rock")
                        {
                            Console.WriteLine($"rock beats scissors {pl2} wins");
                            score2++;
                        }

                        else if (move2.ToLower() == "scissors")
                        {
                            Console.WriteLine("ITS A TIE");
                        }

                        break;

                    default:
                        Console.WriteLine("Choose Rock, paper, scissors only ");
                        break;

                }
                Console.WriteLine($"{pl1}-{score1} | {pl2}-{score2}");
                if (score1 == 3)
                {
                    Console.WriteLine($"{pl1} Wins");

                    break;

                }
                else if (score2 == 3)
                {
                    Console.WriteLine($"{pl1} Wins");
                    break;
                }


            }
            Console.WriteLine("GAME OVER");
        }
    }
}
