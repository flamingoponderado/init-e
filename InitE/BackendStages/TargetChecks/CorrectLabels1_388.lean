import InitE.BackendStages.TargetChecks.CorrectLabels0_388
import InitE.BackendStages.TargetChecks.CorrectEncode0_388
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_388
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_388_eq : LabToTarget.sectionLabels 267432 Reencode0_388.lines [] = (269584, localLabels1_388) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 267432 269584 riscvConfig.encode
    Initial388.lines Reencode0_388.lines [] Reencode0_388_eq).trans
    (localLabels0_388_eq.trans (by kernel_rfl))
#print axioms localLabels1_388_eq
end InitE.BackendStages.TargetChecks.Correct
