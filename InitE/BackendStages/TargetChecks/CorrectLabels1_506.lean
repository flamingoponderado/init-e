import InitE.BackendStages.TargetChecks.CorrectLabels0_506
import InitE.BackendStages.TargetChecks.CorrectEncode0_506
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_506
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_506_eq : LabToTarget.sectionLabels 354340 Reencode0_506.lines [] = (355380, localLabels1_506) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 354340 355380 riscvConfig.encode
    Initial506.lines Reencode0_506.lines [] Reencode0_506_eq).trans
    (localLabels0_506_eq.trans (by kernel_rfl))
#print axioms localLabels1_506_eq
end InitE.BackendStages.TargetChecks.Correct
