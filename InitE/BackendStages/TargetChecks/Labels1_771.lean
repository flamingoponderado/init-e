import InitE.BackendStages.TargetChecks.Data1_771
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_771_eq : LabToTarget.sectionLabels 751388 Reencode0_771.lines [] = (751712, localLabels1_771) := by
  with_unfolding_all rfl
#print axioms localLabels1_771_eq
end InitE.BackendStages.TargetChecks
