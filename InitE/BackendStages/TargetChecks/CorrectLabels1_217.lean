import InitE.BackendStages.TargetChecks.CorrectLabels0_217
import InitE.BackendStages.TargetChecks.CorrectEncode0_217
import InitE.BackendStages.TargetChecks.LabelReuse
import InitE.CompactComputation
import InitE.BackendStages.TargetChecks.CorrectData1_217
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitE.BackendStages
namespace InitE.BackendStages.TargetChecks.Correct
theorem localLabels1_217_eq : LabToTarget.sectionLabels 81844 Reencode0_217.lines [] = (81892, localLabels1_217) := by
  exact (InitE.BackendStages.TargetChecks.sectionLabels_of_encLinesAgain
    Target.labels0 Target.ffis 81844 81892 riscvConfig.encode
    Initial217.lines Reencode0_217.lines [] Reencode0_217_eq).trans
    (localLabels0_217_eq.trans (by kernel_rfl))
#print axioms localLabels1_217_eq
end InitE.BackendStages.TargetChecks.Correct
