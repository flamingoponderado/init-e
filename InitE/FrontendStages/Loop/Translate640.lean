import InitE.FrontendStages.Crep.Data640
import InitE.FrontendStages.Loop.Data640
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitE.FrontendStages.Loop
theorem translate640_eq :
    (704, List.range Crep.output640.2.1.length,
      optimiseHOL (compFuncHOLExact Flapjack.Compiler.Encoders.RiscV.Target.riscvConfig.isa
        functionMap Crep.output640.2.1 (crepSimpProgHOL Crep.output640.2.2))) = output640 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate640_eq
end InitE.FrontendStages.Loop
