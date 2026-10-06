import InitE.BackendStages.TargetChecks.CorrectLabels0_435
import InitE.BackendStages.TargetChecks.CorrectEncode0_435
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_435
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_435_eq : LabToTarget.sectionLabels 296612 Reencode0_435.lines [] = (298348, localLabels1_435) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 296612 298348 riscvConfig.encode
    Initial435.lines Reencode0_435.lines [] Reencode0_435_eq).trans
    (localLabels0_435_eq.trans (by kernel_rfl))
#print axioms localLabels1_435_eq
end InitE.BackendStages.TargetChecks.Correct
