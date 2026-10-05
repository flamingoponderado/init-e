import InitE.FrontendStages.Crep.Data85
import InitE.FrontendStages.Loop.Data85
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitE.FrontendStages.Loop
theorem translate85_eq :
    (149, List.range Crep.output85.2.1.length,
      optimiseHOL (compFuncHOLExact Flapjack.Compiler.Encoders.RiscV.Target.riscvConfig.isa
        functionMap Crep.output85.2.1 (crepSimpProgHOL Crep.output85.2.2))) = output85 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate85_eq
end InitE.FrontendStages.Loop
