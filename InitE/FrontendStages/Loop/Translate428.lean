import InitE.FrontendStages.Crep.Data428
import InitE.FrontendStages.Loop.Data428
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitE.FrontendStages.Loop
theorem translate428_eq :
    (492, List.range Crep.output428.2.1.length,
      optimiseHOL (compFuncHOLExact Flapjack.Compiler.Encoders.RiscV.Target.riscvConfig.isa
        functionMap Crep.output428.2.1 (crepSimpProgHOL Crep.output428.2.2))) = output428 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate428_eq
end InitE.FrontendStages.Loop
