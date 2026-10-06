import InitE.FrontendStages.Crep.Data160
import InitE.FrontendStages.Loop.Data160
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitE.FrontendStages.Loop
theorem translate160_eq :
    (224, List.range Crep.output160.2.1.length,
      optimiseHOL (compFuncHOLExact Flapjack.Compiler.Encoders.RiscV.Target.riscvConfig.isa
        functionMap Crep.output160.2.1 (crepSimpProgHOL Crep.output160.2.2))) = output160 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate160_eq
end InitE.FrontendStages.Loop
