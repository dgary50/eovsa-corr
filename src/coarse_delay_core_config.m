
function coarse_delay_core_config(this_block)

  % Revision History:
  %
  %   24-Sep-2013  (15:51 hours):
  %     Original code was machine generated by Xilinx's System Generator after parsing
  %     /home/observer/projects/eovsa-corr/src/coarse_delay_core.vhd
  %
  %   Nimish Sane: Commented out lines 18, changed port types, and order.

  this_block.setTopLevelLanguage('VHDL');

  this_block.setEntityName('coarse_delay_core');

  % System Generator has to assume that your entity  has a combinational feed through; 
  %   if it  doesn't, then comment out the following line:
  %   this_block.tagAsCombinational;

  this_block.addSimulinkInport('sync');
  this_block.addSimulinkInport('delay');
  this_block.addSimulinkInport('en');
  this_block.addSimulinkInport('data_in1');
  this_block.addSimulinkInport('data_in2');
  this_block.addSimulinkInport('data_in3');
  this_block.addSimulinkInport('data_in4');

  this_block.addSimulinkOutport('sync_out');
  this_block.addSimulinkOutport('data_out1');
  this_block.addSimulinkOutport('data_out2');
  this_block.addSimulinkOutport('data_out3');
  this_block.addSimulinkOutport('data_out4');

  data_out1_port = this_block.port('data_out1');
  data_out1_port.setType('Fix_8_7');
  data_out2_port = this_block.port('data_out2');
  data_out2_port.setType('Fix_8_7');
  data_out3_port = this_block.port('data_out3');
  data_out3_port.setType('Fix_8_7');
  data_out4_port = this_block.port('data_out4');
  data_out4_port.setType('Fix_8_7');
  sync_out_port = this_block.port('sync_out');
  sync_out_port.setType('Bool');
  sync_out_port.useHDLVector(false);

  % -----------------------------
  if (this_block.inputTypesKnown)
    % do input type checking, dynamic output type and generic setup in this code block.

    if (this_block.port('data_in1').width ~= 8);
      this_block.setError('Input data type for port "data_in1" must have width=8.');
    end

    if (this_block.port('data_in2').width ~= 8);
      this_block.setError('Input data type for port "data_in2" must have width=8.');
    end

    if (this_block.port('data_in3').width ~= 8);
      this_block.setError('Input data type for port "data_in3" must have width=8.');
    end

    if (this_block.port('data_in4').width ~= 8);
      this_block.setError('Input data type for port "data_in4" must have width=8.');
    end

    if (this_block.port('delay').width ~= 16);
      this_block.setError('Input data type for port "delay" must have width=16.');
    end

    if (this_block.port('en').width ~= 1);
      this_block.setError('Input data type for port "en" must have width=1.');
    end

    this_block.port('en').useHDLVector(false);

    if (this_block.port('sync').width ~= 1);
      this_block.setError('Input data type for port "sync" must have width=1.');
    end

    this_block.port('sync').useHDLVector(false);

  end  % if(inputTypesKnown)
  % -----------------------------

  % -----------------------------
   if (this_block.inputRatesKnown)
     setup_as_single_rate(this_block,'clk_1','ce_1')
   end  % if(inputRatesKnown)
  % -----------------------------

    % (!) Set the inout port rate to be the same as the first input 
    %     rate. Change the following code if this is untrue.
    uniqueInputRates = unique(this_block.getInputRates);


  % Add addtional source files as needed.
  %  |-------------
  %  | Add files in the order in which they should be compiled.
  %  | If two files "a.vhd" and "b.vhd" contain the entities
  %  | entity_a and entity_b, and entity_a contains a
  %  | component of type entity_b, the correct sequence of
  %  | addFile() calls would be:
  %  |    this_block.addFile('b.vhd');
  %  |    this_block.addFile('a.vhd');
  %  |-------------

  %    this_block.addFile('');
  %    this_block.addFile('');
  this_block.addFile('coarse_delay_core.vhd');

return;


% ------------------------------------------------------------

function setup_as_single_rate(block,clkname,cename) 
  inputRates = block.inputRates; 
  uniqueInputRates = unique(inputRates); 
  if (length(uniqueInputRates)==1 & uniqueInputRates(1)==Inf) 
    block.addError('The inputs to this block cannot all be constant.'); 
    return; 
  end 
  if (uniqueInputRates(end) == Inf) 
     hasConstantInput = true; 
     uniqueInputRates = uniqueInputRates(1:end-1); 
  end 
  if (length(uniqueInputRates) ~= 1) 
    block.addError('The inputs to this block must run at a single rate.'); 
    return; 
  end 
  theInputRate = uniqueInputRates(1); 
  for i = 1:block.numSimulinkOutports 
     block.outport(i).setRate(theInputRate); 
  end 
  block.addClkCEPair(clkname,cename,theInputRate); 
  return; 

% ------------------------------------------------------------

