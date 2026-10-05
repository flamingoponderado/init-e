import InitE.FrontendStages.Crep.Data119
import InitE.FrontendStages.Loop.Data119
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitE.FrontendStages.Loop
theorem translate119_eq :
    (183, List.range Crep.output119.2.1.length,
      optimiseHOL (compFuncHOLExact Flapjack.Compiler.Encoders.RiscV.Target.riscvConfig.isa
        functionMap Crep.output119.2.1 (crepSimpProgHOL Crep.output119.2.2))) = output119 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate119_eq
end InitE.FrontendStages.Loop
