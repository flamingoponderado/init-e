import InitE.FrontendStages.Crep.Data432
import InitE.FrontendStages.Loop.Data432
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitE.FrontendStages.Loop
theorem translate432_eq :
    (496, List.range Crep.output432.2.1.length,
      optimiseHOL (compFuncHOLExact Flapjack.Compiler.Encoders.RiscV.Target.riscvConfig.isa
        functionMap Crep.output432.2.1 (crepSimpProgHOL Crep.output432.2.2))) = output432 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate432_eq
end InitE.FrontendStages.Loop
