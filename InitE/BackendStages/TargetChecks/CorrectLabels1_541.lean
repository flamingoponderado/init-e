import InitE.BackendStages.TargetChecks.CorrectLabels0_541
import InitE.BackendStages.TargetChecks.CorrectEncode0_541
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_541
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_541_eq : LabToTarget.sectionLabels 385008 Reencode0_541.lines [] = (385480, localLabels1_541) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 385008 385480 riscvConfig.encode
    Initial541.lines Reencode0_541.lines [] Reencode0_541_eq).trans
    (localLabels0_541_eq.trans (by kernel_rfl))
#print axioms localLabels1_541_eq
end InitE.BackendStages.TargetChecks.Correct
