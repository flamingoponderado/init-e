import InitE.BackendStages.TargetChecks.CorrectLabels0_150
import InitE.BackendStages.TargetChecks.CorrectEncode0_150
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_150
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_150_eq : LabToTarget.sectionLabels 37716 Reencode0_150.lines [] = (37904, localLabels1_150) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 37716 37904 riscvConfig.encode
    Initial150.lines Reencode0_150.lines [] Reencode0_150_eq).trans
    (localLabels0_150_eq.trans (by kernel_rfl))
#print axioms localLabels1_150_eq
end InitE.BackendStages.TargetChecks.Correct
