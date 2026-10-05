import InitE.WordStages.Parallel810.Data1
import InitE.WordStages.Parallel810.Data0
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitE.WordStages.Parallel810
theorem pass810_1_eq : WordInst.instSelectExecutable riscvConfig (maxVarHOL (pass810_0) + 1) (pass810_0) = pass810_1 := by
  conv => lhs; cbv
  try rfl
#print axioms pass810_1_eq
end InitE.WordStages.Parallel810
