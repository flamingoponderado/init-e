import InitE.FrontendStages.Crep.Data786
import InitE.FrontendStages.Loop.Data786
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitE.FrontendStages.Loop
theorem translate786_eq :
    (850, List.range Crep.output786.2.1.length,
      optimiseHOL (compFuncHOLExact Flapjack.Compiler.Encoders.RiscV.Target.riscvConfig.isa
        functionMap Crep.output786.2.1 (crepSimpProgHOL Crep.output786.2.2))) = output786 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms translate786_eq
end InitE.FrontendStages.Loop
