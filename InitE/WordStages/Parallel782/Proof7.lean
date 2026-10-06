import InitE.CompactComputation
import InitE.WordStages.Parallel782.Data7
import InitE.WordStages.Parallel782.Data6
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages.Parallel782
theorem pass782_7_eq : WordUnreach.removeUnreach (pass782_6) = pass782_7 := by
  kernel_rfl
#print axioms pass782_7_eq
end InitE.WordStages.Parallel782
