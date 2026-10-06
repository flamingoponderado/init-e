import InitE.BackendStages.TargetChecks.CorrectLabels0_382
import InitE.BackendStages.TargetChecks.CorrectEncode0_382
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_382
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_382_eq : LabToTarget.sectionLabels 263212 Reencode0_382.lines [] = (263944, localLabels1_382) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 263212 263944 riscvConfig.encode
    Initial382.lines Reencode0_382.lines [] Reencode0_382_eq).trans
    (localLabels0_382_eq.trans (by kernel_rfl))
#print axioms localLabels1_382_eq
end InitE.BackendStages.TargetChecks.Correct
