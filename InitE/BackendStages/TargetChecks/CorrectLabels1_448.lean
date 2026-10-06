import InitE.BackendStages.TargetChecks.CorrectLabels0_448
import InitE.BackendStages.TargetChecks.CorrectEncode0_448
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_448
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_448_eq : LabToTarget.sectionLabels 304500 Reencode0_448.lines [] = (304668, localLabels1_448) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 304500 304668 riscvConfig.encode
    Initial448.lines Reencode0_448.lines [] Reencode0_448_eq).trans
    (localLabels0_448_eq.trans (by kernel_rfl))
#print axioms localLabels1_448_eq
end InitE.BackendStages.TargetChecks.Correct
