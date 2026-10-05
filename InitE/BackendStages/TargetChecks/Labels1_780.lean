import InitE.BackendStages.TargetChecks.Data1_780
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_780_eq : LabToTarget.sectionLabels 762044 Reencode0_780.lines [] = (762220, localLabels1_780) := by
  with_unfolding_all rfl
#print axioms localLabels1_780_eq
end InitE.BackendStages.TargetChecks
