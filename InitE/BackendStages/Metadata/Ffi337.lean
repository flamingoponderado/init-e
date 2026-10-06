import InitE.BackendStages.Metadata.Data337
import InitE.BackendStages.Filtered337
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis337_eq : ffiLines Filtered337.lines = localFfis337 := by
  with_unfolding_all rfl
theorem ffiStep337 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis337) : LabToTarget.findFfiNames (Filtered337 :: rest) = suffixFfis337 := by
  rw [findFfiNames_section, localFfis337_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep337
end InitE.BackendStages.Metadata
