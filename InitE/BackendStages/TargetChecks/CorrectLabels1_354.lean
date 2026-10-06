import InitE.BackendStages.TargetChecks.CorrectLabels0_354
import InitE.BackendStages.TargetChecks.CorrectEncode0_354
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_354
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_354_eq : LabToTarget.sectionLabels 245736 Reencode0_354.lines [] = (245768, localLabels1_354) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 245736 245768 riscvConfig.encode
    Initial354.lines Reencode0_354.lines [] Reencode0_354_eq).trans
    (localLabels0_354_eq.trans (by kernel_rfl))
#print axioms localLabels1_354_eq
end InitE.BackendStages.TargetChecks.Correct
