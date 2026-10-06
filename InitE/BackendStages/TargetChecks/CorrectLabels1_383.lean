import InitE.BackendStages.TargetChecks.CorrectLabels0_383
import InitE.BackendStages.TargetChecks.CorrectEncode0_383
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_383
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_383_eq : LabToTarget.sectionLabels 263944 Reencode0_383.lines [] = (264804, localLabels1_383) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 263944 264804 riscvConfig.encode
    Initial383.lines Reencode0_383.lines [] Reencode0_383_eq).trans
    (localLabels0_383_eq.trans (by kernel_rfl))
#print axioms localLabels1_383_eq
end InitE.BackendStages.TargetChecks.Correct
