import InitE.FrontendStages.Crep.Data675
import InitE.FrontendStages.Loop.Data675
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitE.FrontendStages.Loop
theorem translate675_eq :
    (739, List.range Crep.output675.2.1.length,
      optimiseHOL (compFuncHOLExact Flapjack.Compiler.Encoders.RiscV.Target.riscvConfig.isa
        functionMap Crep.output675.2.1 (crepSimpProgHOL Crep.output675.2.2))) = output675 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate675_eq
end InitE.FrontendStages.Loop
