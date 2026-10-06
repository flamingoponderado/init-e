import InitE.BackendStages.TargetChecks.CorrectLabels0_523
import InitE.BackendStages.TargetChecks.CorrectEncode0_523
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_523
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_523_eq : LabToTarget.sectionLabels 369556 Reencode0_523.lines [] = (370600, localLabels1_523) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 369556 370600 riscvConfig.encode
    Initial523.lines Reencode0_523.lines [] Reencode0_523_eq).trans
    (localLabels0_523_eq.trans (by kernel_rfl))
#print axioms localLabels1_523_eq
end InitE.BackendStages.TargetChecks.Correct
