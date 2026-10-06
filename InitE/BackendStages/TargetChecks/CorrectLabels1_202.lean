import InitE.BackendStages.TargetChecks.CorrectLabels0_202
import InitE.BackendStages.TargetChecks.CorrectEncode0_202
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_202
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_202_eq : LabToTarget.sectionLabels 71452 Reencode0_202.lines [] = (71596, localLabels1_202) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 71452 71596 riscvConfig.encode
    Initial202.lines Reencode0_202.lines [] Reencode0_202_eq).trans
    (localLabels0_202_eq.trans (by kernel_rfl))
#print axioms localLabels1_202_eq
end InitE.BackendStages.TargetChecks.Correct
