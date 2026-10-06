import InitE.BackendStages.TargetChecks.CorrectLabels0_124
import InitE.BackendStages.TargetChecks.CorrectEncode0_124
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_124
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_124_eq : LabToTarget.sectionLabels 21072 Reencode0_124.lines [] = (21276, localLabels1_124) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 21072 21276 riscvConfig.encode
    Initial124.lines Reencode0_124.lines [] Reencode0_124_eq).trans
    (localLabels0_124_eq.trans (by kernel_rfl))
#print axioms localLabels1_124_eq
end InitE.BackendStages.TargetChecks.Correct
