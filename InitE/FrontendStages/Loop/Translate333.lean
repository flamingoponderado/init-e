import InitE.FrontendStages.Crep.Data333
import InitE.FrontendStages.Loop.Data333
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitE.FrontendStages.Loop
theorem translate333_eq :
    (397, List.range Crep.output333.2.1.length,
      optimiseHOL (compFuncHOLExact Flapjack.Compiler.Encoders.RiscV.Target.riscvConfig.isa
        functionMap Crep.output333.2.1 (crepSimpProgHOL Crep.output333.2.2))) = output333 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate333_eq
end InitE.FrontendStages.Loop
