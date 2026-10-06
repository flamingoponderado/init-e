import InitE.BackendStages.TargetChecks.CorrectLabels0_438
import InitE.BackendStages.TargetChecks.CorrectEncode0_438
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_438
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_438_eq : LabToTarget.sectionLabels 298840 Reencode0_438.lines [] = (299224, localLabels1_438) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 298840 299224 riscvConfig.encode
    Initial438.lines Reencode0_438.lines [] Reencode0_438_eq).trans
    (localLabels0_438_eq.trans (by kernel_rfl))
#print axioms localLabels1_438_eq
end InitE.BackendStages.TargetChecks.Correct
