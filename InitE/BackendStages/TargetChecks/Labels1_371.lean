import InitE.BackendStages.TargetChecks.Data1_371
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_371_eq : LabToTarget.sectionLabels 256924 Reencode0_371.lines [] = (257108, localLabels1_371) := by
  with_unfolding_all rfl
#print axioms localLabels1_371_eq
end InitE.BackendStages.TargetChecks
