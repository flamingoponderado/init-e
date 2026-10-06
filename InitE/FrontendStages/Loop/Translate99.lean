import InitE.FrontendStages.Crep.Data99
import InitE.FrontendStages.Loop.Data99
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitE.FrontendStages.Loop
theorem translate99_eq :
    (163, List.range Crep.output99.2.1.length,
      optimiseHOL (compFuncHOLExact Flapjack.Compiler.Encoders.RiscV.Target.riscvConfig.isa
        functionMap Crep.output99.2.1 (crepSimpProgHOL Crep.output99.2.2))) = output99 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate99_eq
end InitE.FrontendStages.Loop
