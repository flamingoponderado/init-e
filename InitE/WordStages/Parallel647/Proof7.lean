import InitE.CompactComputation
import InitE.WordStages.Parallel647.Data7
import InitE.WordStages.Parallel647.Data6
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages.Parallel647
theorem pass647_7_eq : WordUnreach.removeUnreach (pass647_6) = pass647_7 := by
  kernel_rfl
#print axioms pass647_7_eq
end InitE.WordStages.Parallel647
