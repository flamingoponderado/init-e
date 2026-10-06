import InitE.BackendStages.TargetChecks.CorrectLabels0_526
import InitE.BackendStages.TargetChecks.CorrectEncode0_526
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_526
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_526_eq : LabToTarget.sectionLabels 373712 Reencode0_526.lines [] = (373912, localLabels1_526) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 373712 373912 riscvConfig.encode
    Initial526.lines Reencode0_526.lines [] Reencode0_526_eq).trans
    (localLabels0_526_eq.trans (by kernel_rfl))
#print axioms localLabels1_526_eq
end InitE.BackendStages.TargetChecks.Correct
