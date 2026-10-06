import InitE.BackendStages.TargetChecks.CorrectLabels0_100
import InitE.BackendStages.TargetChecks.CorrectEncode0_100
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_100
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_100_eq : LabToTarget.sectionLabels 12632 Reencode0_100.lines [] = (12644, localLabels1_100) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 12632 12644 riscvConfig.encode
    Initial100.lines Reencode0_100.lines [] Reencode0_100_eq).trans
    (localLabels0_100_eq.trans (by kernel_rfl))
#print axioms localLabels1_100_eq
end InitE.BackendStages.TargetChecks.Correct
