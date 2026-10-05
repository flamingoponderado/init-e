import InitE.BackendStages.Metadata.Data342
import InitE.BackendStages.Filtered342
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitE.BackendStages
namespace InitE.BackendStages.Metadata
theorem localFfis342_eq : ffiLines Filtered342.lines = localFfis342 := by
  with_unfolding_all rfl
theorem ffiStep342 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis342) : LabToTarget.findFfiNames (Filtered342 :: rest) = suffixFfis342 := by
  rw [findFfiNames_section, localFfis342_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep342
end InitE.BackendStages.Metadata
