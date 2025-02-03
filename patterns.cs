/** 1:
 *****
 *****
 *****
 *****
 *****
**/

void One() 
{
    for (int i=0; i<5; i++) // rows
    {
        string pattern = "";
        for (int j=0; j<5; j++) // columns
        {
            pattern += "*";
        }
        Console.WriteLine(pattern);
    }
}

/** 2:
 *
 **
 ***
 ****
 *****
**/
void Two() 
{
    for (int i=0; i<5; i++) // rows
    {
        string pattern = "";
        for (int j=0; j<(i+1); j++) // columns
        {
            pattern += "*";
        }
        Console.WriteLine(pattern);
    }
}

/** 3:
 1
 12
 123
 1234
 12345
**/
void Three() 
{
    for (int i=1; i<=5; i++) // rows
    {
        List<int> patternArr = new List<int>();
        for (int j=1; j<=(i); j++ ) // columns
        {
            patternArr.Add(j);
        }
        Console.WriteLine(string.Join("", patternArr));
    }
}


/** 4:
 1
 22
 333
 4444
 55555
**/
void Four() 
{
    for (int i=1; i<=5; i++) // rows
    {
        List<int> patternArr = new List<int>();
        for (int j=1; j<=(i); j++ ) // columns
        {
            patternArr.Add(i);
        }
        Console.WriteLine(string.Join("", patternArr));
    }
}

/** 5:
 12345
 1234
 123
 12
 1
**/
void Five() 
{
    for (int i=5; i>=0; i--) // rows
    {
        List<int> patternArr = new List<int>();
        for (int j=1; j<=(i); j++ ) // columns
        {
            patternArr.Add(j);
        }
        Console.WriteLine(string.Join("", patternArr));
    }
}

/** 6:
    *       9-1/2 - 4
   ***      9-3/2 = 3
  *****     9-5/2 = 2
 *******    9-7/2 = 1
*********   9-9/2 = 0
**/
void Six() 
{
    for (int i=4; i>=0; i--) // rows
    {
        List<string> patternArr = new List<string>();
        for (int j=0; j<9; j++ ) // columns
        {
            int numstars = 9 - (i+i);
            
            if (j<i) {
                patternArr.Add(" ");
            } else if (j>=(numstars+i)) {
                patternArr.Add(" ");
            } else {
                patternArr.Add("*");
            }
        }
        Console.WriteLine(string.Join("", patternArr));
    }
}

/** 8:
*********   
 *******    
  *****     
   ***      
    *       
**/
void Eight() 
{
    for (int i=0; i<5; i++)
    {
        List<string> patternArr = new List<string>();
        for (int j=0; j<9; j++)
        {
            int numOfSpacesInLeft = i;
            int numOfSpacesInRight = i;
            int totalSpaces = i + i;
            int numOfStars = 9 - totalSpaces;
            // Console.WriteLine(totalSpaces);
            Console.WriteLine(numOfStars);
 
            if (j < numOfSpacesInLeft) {
                patternArr.Add("_");
            } else if (j > (numOfSpacesInLeft + numOfStars) - 1) {
                patternArr.Add("_");
            } else {
                patternArr.Add("*");
            }
        }
        Console.WriteLine(string.Join("", patternArr));
    }
}




/** 9:
    *
   ***
  *****
 *******
*********
*********
 *******
  *****
   ***
    *
**/
void Nine()
{
    int rows = 5;
    for (int i = 0; i < rows; i++)
    {
        List<string> patternArr = new List<string>();

        for (int j = 0; j < rows - i - 1; j++)
        {
            patternArr.Add(" ");
        }
        // Add stars
        for (int j = 0; j < 2 * i + 1; j++)
        {
            patternArr.Add("*");
        }

        Console.WriteLine(string.Join("", patternArr));
    }

    for (int i = 0; i < rows; i++)
    {
        List<string> patternArr = new List<string>();

        for (int j = 0; j < i; j++)
        {
            patternArr.Add(" ");
        }
        for (int j = 0; j < 9 - 2 * i; j++)
        {
            patternArr.Add("*");
        }

        Console.WriteLine(string.Join("", patternArr));
    }
}

