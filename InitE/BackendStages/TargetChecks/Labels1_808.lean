import InitE.BackendStages.TargetChecks.Data1_808
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_808_eq : LabToTarget.sectionLabels 834680 Reencode0_808.lines [] = (845236, localLabels1_808) := by
  with_unfolding_all rfl
#print axioms localLabels1_808_eq
end InitE.BackendStages.TargetChecks
