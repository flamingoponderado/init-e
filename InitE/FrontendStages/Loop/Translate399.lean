import InitE.FrontendStages.Crep.Data399
import InitE.FrontendStages.Loop.Data399
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitE.FrontendStages.Loop
theorem translate399_eq :
    (463, List.range Crep.output399.2.1.length,
      optimiseHOL (compFuncHOLExact Flapjack.Compiler.Encoders.RiscV.Target.riscvConfig.isa
        functionMap Crep.output399.2.1 (crepSimpProgHOL Crep.output399.2.2))) = output399 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate399_eq
end InitE.FrontendStages.Loop
