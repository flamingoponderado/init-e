import InitE.FrontendStages.Crep.Data265
import InitE.FrontendStages.Loop.Data265
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitE.FrontendStages.Loop
theorem translate265_eq :
    (329, List.range Crep.output265.2.1.length,
      optimiseHOL (compFuncHOLExact Flapjack.Compiler.Encoders.RiscV.Target.riscvConfig.isa
        functionMap Crep.output265.2.1 (crepSimpProgHOL Crep.output265.2.2))) = output265 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate265_eq
end InitE.FrontendStages.Loop
