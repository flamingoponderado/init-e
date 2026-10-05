import InitE.FrontendStages.Crep.Data408
import InitE.FrontendStages.Loop.Data408
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitE.FrontendStages.Loop
theorem translate408_eq :
    (472, List.range Crep.output408.2.1.length,
      optimiseHOL (compFuncHOLExact Flapjack.Compiler.Encoders.RiscV.Target.riscvConfig.isa
        functionMap Crep.output408.2.1 (crepSimpProgHOL Crep.output408.2.2))) = output408 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate408_eq
end InitE.FrontendStages.Loop
