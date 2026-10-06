import InitE.BackendStages.TargetChecks.CorrectLabels0_442
import InitE.BackendStages.TargetChecks.CorrectEncode0_442
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_442
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_442_eq : LabToTarget.sectionLabels 301624 Reencode0_442.lines [] = (301960, localLabels1_442) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 301624 301960 riscvConfig.encode
    Initial442.lines Reencode0_442.lines [] Reencode0_442_eq).trans
    (localLabels0_442_eq.trans (by kernel_rfl))
#print axioms localLabels1_442_eq
end InitE.BackendStages.TargetChecks.Correct
