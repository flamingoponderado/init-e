import InitE.BackendStages.TargetChecks.CorrectLabels0_563
import InitE.BackendStages.TargetChecks.CorrectEncode0_563
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_563
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_563_eq : LabToTarget.sectionLabels 407880 Reencode0_563.lines [] = (408080, localLabels1_563) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 407880 408080 riscvConfig.encode
    Initial563.lines Reencode0_563.lines [] Reencode0_563_eq).trans
    (localLabels0_563_eq.trans (by kernel_rfl))
#print axioms localLabels1_563_eq
end InitE.BackendStages.TargetChecks.Correct
