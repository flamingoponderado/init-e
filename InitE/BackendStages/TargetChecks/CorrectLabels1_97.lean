import InitE.BackendStages.TargetChecks.CorrectLabels0_97
import InitE.BackendStages.TargetChecks.CorrectEncode0_97
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_97
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_97_eq : LabToTarget.sectionLabels 12312 Reencode0_97.lines [] = (12376, localLabels1_97) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 12312 12376 riscvConfig.encode
    Initial97.lines Reencode0_97.lines [] Reencode0_97_eq).trans
    (localLabels0_97_eq.trans (by kernel_rfl))
#print axioms localLabels1_97_eq
end InitE.BackendStages.TargetChecks.Correct
