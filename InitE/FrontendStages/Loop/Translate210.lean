import InitE.FrontendStages.Crep.Data210
import InitE.FrontendStages.Loop.Data210
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitE.FrontendStages.Loop
theorem translate210_eq :
    (274, List.range Crep.output210.2.1.length,
      optimiseHOL (compFuncHOLExact Flapjack.Compiler.Encoders.RiscV.Target.riscvConfig.isa
        functionMap Crep.output210.2.1 (crepSimpProgHOL Crep.output210.2.2))) = output210 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate210_eq
end InitE.FrontendStages.Loop
