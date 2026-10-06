import Tools.GenSmallStages
import InitE.SmallStages.Oracles778
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 778 InitE.WordStages.source778.2.1 InitE.WordStages.source778.2.2 InitE.SmallStages.Oracles778.oracle778
