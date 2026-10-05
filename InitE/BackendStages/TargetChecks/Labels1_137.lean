import InitE.BackendStages.TargetChecks.Data1_137
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_137_eq : LabToTarget.sectionLabels 29876 Reencode0_137.lines [] = (30088, localLabels1_137) := by
  with_unfolding_all rfl
#print axioms localLabels1_137_eq
end InitE.BackendStages.TargetChecks
