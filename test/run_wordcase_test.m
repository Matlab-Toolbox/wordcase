
  %% run_spec
  clear;
  %% Clear import list to test correct library
  clear import; 



  %% For Functions
  %    Add function to path
  run('../load_toolbox.m');

  %% Test Vectors
  test = {};
  test(end+1).input =  0 ; test(end).expect = '0';
  test(end+1).input =  1 ; test(end).expect = '1';
  test(end+1).input = '0'; test(end).expect = '0';
  test(end+1).input = '1'; test(end).expect = '1';
  test(end+1).input = 'hello'; test(end).expect = 'Hello';
  test(end+1).input = 'Hello'; test(end).expect = 'Hello';
  test(end+1).input = 'HELLO'; test(end).expect = 'Hello';
  test(end+1).input = 'hELLo'; test(end).expect = 'Hello';
  test(end+1).input = 'hELLO'; test(end).expect = 'Hello';
  test(end+1).input = 'hello world'; test(end).expect = 'Hello World';
  test(end+1).input = 'Hello world'; test(end).expect = 'Hello World';
  test(end+1).input = 'hello World'; test(end).expect = 'Hello World';
  test(end+1).input = 'Hello World'; test(end).expect = 'Hello World';
  test(end+1).input = 'HELLO WORLD'; test(end).expect = 'Hello World';
  
  %% The tests
  error_count = 0;
  pass_count  = 0;

  for vector=1:size(test, 2)
    b           = wordcase(test(vector).input );
    if (  ~isequal(b, test(vector).expect )  )
      disp(['wordcase( ', test(vector).input, ' ) Failed : ', b])
      error_count = error_count + 1;
    else
      pass_count  = pass_count  + 1;
    end
  end

  %% Test Status Report
  if error_count > 0
    disp(['Test FAILED : ', num2str(pass_count), ' passes and ',num2str(error_count),' fails'])
  else
    disp(['Test Passed : ', num2str(pass_count), ' checks ran '])
  end

