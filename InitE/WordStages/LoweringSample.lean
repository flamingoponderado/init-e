import InitE.WordStages.Source64
import InitE.WordStages.Source65
import InitE.WordStages.Source66
import InitE.WordStages.Source67
import InitE.WordStages.Source68
import InitE.WordStages.Source69
import InitE.WordStages.Source70
import InitE.WordStages.Source71
open Flapjack Flapjack.Compiler.Encoders.RiscV.Target
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.WordStages
theorem lowering_sample_eq :
    (panToWordCompileProgHOL riscvConfig.isa sourceDeclarations).take 8 =
      [source64, source65, source66, source67, source68, source69, source70, source71] := by
  conv => lhs; cbv
  try rfl
#print axioms lowering_sample_eq
end InitE.WordStages
