import InitE.FrontendStages.Crep.Data306
import InitE.FrontendStages.Loop.Data306
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitE.FrontendStages.Loop
theorem translate306_eq :
    (370, List.range Crep.output306.2.1.length,
      optimiseHOL (compFuncHOLExact Flapjack.Compiler.Encoders.RiscV.Target.riscvConfig.isa
        functionMap Crep.output306.2.1 (crepSimpProgHOL Crep.output306.2.2))) = output306 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate306_eq
end InitE.FrontendStages.Loop
