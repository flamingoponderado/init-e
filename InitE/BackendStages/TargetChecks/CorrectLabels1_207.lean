import InitE.BackendStages.TargetChecks.CorrectLabels0_207
import InitE.BackendStages.TargetChecks.CorrectEncode0_207
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_207
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_207_eq : LabToTarget.sectionLabels 73016 Reencode0_207.lines [] = (73304, localLabels1_207) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 73016 73304 riscvConfig.encode
    Initial207.lines Reencode0_207.lines [] Reencode0_207_eq).trans
    (localLabels0_207_eq.trans (by kernel_rfl))
#print axioms localLabels1_207_eq
end InitE.BackendStages.TargetChecks.Correct
