import Tools.GenSmallStages
import InitE.SmallStages.Oracles601
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 601 InitE.WordStages.source601.2.1 InitE.WordStages.source601.2.2 InitE.SmallStages.Oracles601.oracle601
