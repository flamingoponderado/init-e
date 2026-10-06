import InitE.CompactComputation
import InitE.WordStages.Parallel647.Data1
import InitE.WordStages.Parallel647.Data0
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages.Parallel647
theorem pass647_1_eq : WordInst.instSelectExecutable riscvConfig (maxVarHOL (pass647_0) + 1) (pass647_0) = pass647_1 := by
  kernel_rfl
#print axioms pass647_1_eq
end InitE.WordStages.Parallel647
