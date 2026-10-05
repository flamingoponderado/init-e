import InitE.BackendStages.TargetChecks.Data1_664
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks
theorem localLabels1_664_eq : LabToTarget.sectionLabels 587532 Reencode0_664.lines [] = (591808, localLabels1_664) := by
  with_unfolding_all rfl
#print axioms localLabels1_664_eq
end InitE.BackendStages.TargetChecks
