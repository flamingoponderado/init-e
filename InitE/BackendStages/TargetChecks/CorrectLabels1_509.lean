import InitE.BackendStages.TargetChecks.CorrectLabels0_509
import InitE.BackendStages.TargetChecks.CorrectEncode0_509
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_509
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_509_eq : LabToTarget.sectionLabels 357428 Reencode0_509.lines [] = (358472, localLabels1_509) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 357428 358472 riscvConfig.encode
    Initial509.lines Reencode0_509.lines [] Reencode0_509_eq).trans
    (localLabels0_509_eq.trans (by kernel_rfl))
#print axioms localLabels1_509_eq
end InitE.BackendStages.TargetChecks.Correct
