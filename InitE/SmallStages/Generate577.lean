import Tools.GenSmallStages
import InitE.SmallStages.Oracles577
set_option autoImplicit false
run_elab do
  let env ← Lean.getEnv
  liftM <| InitE.GenSmallStages.prepare env 577 InitE.WordStages.source577.2.1 InitE.WordStages.source577.2.2 InitE.SmallStages.Oracles577.oracle577
