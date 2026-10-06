import InitE.BackendStages.TargetChecks.CorrectLabels0_485
import InitE.BackendStages.TargetChecks.CorrectEncode0_485
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_485
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_485_eq : LabToTarget.sectionLabels 342868 Reencode0_485.lines [] = (343464, localLabels1_485) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 342868 343464 riscvConfig.encode
    Initial485.lines Reencode0_485.lines [] Reencode0_485_eq).trans
    (localLabels0_485_eq.trans (by kernel_rfl))
#print axioms localLabels1_485_eq
end InitE.BackendStages.TargetChecks.Correct
