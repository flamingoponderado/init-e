import InitE.FrontendStages.Crep.Data610
import InitE.FrontendStages.Loop.Data610
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitE.FrontendStages.Loop
theorem translate610_eq :
    (674, List.range Crep.output610.2.1.length,
      optimiseHOL (compFuncHOLExact Flapjack.Compiler.Encoders.RiscV.Target.riscvConfig.isa
        functionMap Crep.output610.2.1 (crepSimpProgHOL Crep.output610.2.2))) = output610 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate610_eq
end InitE.FrontendStages.Loop
